class Project < ApplicationRecord
  enum status: { pendiente: 0, activo: 1, rechazado: 2, finalizado: 3 }
  enum category: { salud: 0, vivienda: 1, entretencion: 2, seguridad: 3, educacion: 4 }

  def self.project_categories
    Project.categories.keys.map(&:capitalize)
  end

  def self.project_statuses
    Project.statuses.keys.map(&:capitalize)
  end
end
