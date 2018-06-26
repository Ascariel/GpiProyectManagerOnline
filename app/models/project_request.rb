class ProjectRequest < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :user, optional: true
  enum status: { pendiente: 0, asignada: 1, rechazada: 2 }
  enum category: { salud: 0, vivienda: 1, entretencion: 2, seguridad: 3, educacion: 4 }
end
