ActiveAdmin.register Organizador do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :nombre1 ,:nombre2, :apellido1, :apellido2, :empresa_id, :evento_id, :email, :telefono, :descripcion, :estadoinicialeventos


end
