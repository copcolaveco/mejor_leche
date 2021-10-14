class PdfFormatter
    def initialize(resource, template, locals = {})
        @resource = resource
        @class_name = resource.class.name
        @template = template
        @tempfile_path = "#{Rails.root}/tmp/#{@class_name.underscore}_#{@resource.id}.pdf"
        @pdf_file = nil
        @custom_locals = locals
    end

    def generate_and_store_pdf_document
        generate_pdf_document
        store_temporary_pdf_document
        assign_pdf_file_to_resource
    end

    def generate_pdf_document
        render_options = {
            template: 'estates/show',
            layout: 'pdf.html.erb',
            locals: { @class_name.underscore.to_sym => @resource }
        }

        render_options[:locals] = render_options[:locals].merge(@custom_locals)
        controller = (@class_name.pluralize + 'Controller').constantize
        relative_html = controller.new.render_to_string(render_options)
        grover = Grover.new(relative_html)        
    end

    def store_temporary_pdf_document
        File.open(@tempfile_path, 'w') do |file|
          file.write(@pdf_file)
        end
    end
    
    def assign_pdf_file_to_resource
        File.open(@tempfile_path, 'r') do |file|
            @resource.pdf = file
        end
        @resource.save

        File.delete(@tempfile_path) if File.exist?(@tempfile_path)
    end
end