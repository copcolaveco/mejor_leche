
Department.create(name: 'Artigas')
Department.create(name: 'Salto')
Department.create(name: 'Paysandú')
Department.create(name: 'Río Negro')
Department.create(name: 'Soriano')
Department.create(name: 'Rivera')
Department.create(name: 'Colonia')
Department.create(name: 'Tacuarembó')
Department.create(name: 'Durazno')
Department.create(name: 'Flores')
Department.create(name: 'Florida')
Department.create(name: 'San José')
Department.create(name: 'Montevideo')
Department.create(name: 'Canelones')
Department.create(name: 'Cerro Largo')
Department.create(name: 'Treinta y Tres')
Department.create(name: 'Lavalleja')
Department.create(name: 'Maldonado')
Department.create(name: 'Rocha')

RodeosMainBreed.create(name: 'Holando')
RodeosMainBreed.create(name: 'Jersey')
RodeosMainBreed.create(name: 'Cruza')
RodeosMainBreed.create(name: 'Normando')

UserType.create(typename: 'Productor', public: 1)
UserType.create(typename: 'Técnico', public: 1)
UserType.create(typename: 'Administrador', public: 0)
UserType.create(typename: 'Académico', public: 0)

SecondaryUserType.create(name: 'Veterinario', user_type_id: 2)
SecondaryUserType.create(name: 'Lechero', user_type_id: 2)
SecondaryUserType.create(name: 'Ingeniero Agrónomo', user_type_id: 2)
SecondaryUserType.create(name: 'Productor', user_type_id: 1)
SecondaryUserType.create(name: 'Academico', user_type_id: 4)
SecondaryUserType.create(name: 'Administrador', user_type_id: 3)

FormOfSupply.create(name: 'En sala', losses: 10)
FormOfSupply.create(name: 'En el piso/bajo alambre', losses: 10)
FormOfSupply.create(name: 'Comed. Campo', losses: 10)
FormOfSupply.create(name: 'Comed. piso hormigón o balasto', losses: 10)
FormOfSupply.create(name: 'Otra', losses: 10)

TypeOfFood.create(name: 'Concentrado energético', ms:89, protein:12)
TypeOfFood.create(name: 'Concentrado proteico', ms:89, protein:20)
TypeOfFood.create(name: 'Ración balanceada', ms:89, protein:18)
TypeOfFood.create(name: 'Silo grano húmedo', ms:70, protein:8.5)
TypeOfFood.create(name: 'Henilaje', ms:50, protein:16)
TypeOfFood.create(name: 'Silo', ms:30, protein:15)
TypeOfFood.create(name: 'Fardo', ms:70, protein:12)
TypeOfFood.create(name: 'Pastura', ms:20, protein:18)

ProductiveArea.create(name: 'Remitente')
ProductiveArea.create(name: 'Quesero')
ProductiveArea.create(name: 'Ambos (Remitente y Quesero)')

User.create(
    email: 'it.colaveco@gmail.com', 
    password: 'password',
    password_confirmation: 'password',
    created_at: '2021-08-04', 
    updated_at: '2021-08-04',
    business_name: 'Administrador', 
    rut: '123123123123',
    address: 'Parque el Retiro',
    identification_document: '11111111',
    phone_one: '123', 
    phone_two: '123', 
    location: 'Nueva Helvecia', 
    invoice_postal_code: '70200', 
    username: 'Administrador', 
    user_type_id: 3, 
    secondary_user_type_id: 6
)
