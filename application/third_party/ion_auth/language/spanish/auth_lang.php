<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* Name:  Auth Lang - English
*
* Author: Ben Edmunds
* 		  ben.edmunds@gmail.com
*         @benedmunds
*
* Author: Daniel Davis
*         @ourmaninjapan
* 
* Author: Josue Ibarra
*         @josuetijuana
*
* Location: http://github.com/benedmunds/ion_auth/
*
* Created:  03.09.2013
*
* Description:  Spanish language file for Ion Auth example views
*
*/

// Errors
$lang['error_csrf'] = 'Este formulario no pasó nuestras pruebas de seguridad.';

// Login
$lang['login_heading']         = 'Ingresar';
$lang['login_subheading']      = 'Por favor, introduce tu email/usuario y contraseña.';
$lang['login_identity_label']  = 'Email/Usuario:';
$lang['login_password_label']  = 'Contraseña:';
$lang['login_remember_label']  = 'Recuérdame:';
$lang['login_submit_btn']      = 'Ingresar';
$lang['login_forgot_password'] = '¿Has olvidado tu contraseña?';

// Index
$lang['index_heading']           = 'Usuarios';
$lang['username']           	 = 'Usuario';
$lang['index_subheading']        = 'Debajo está la lista de usuarios.';
$lang['index_fname_th']          = 'Nombre';
$lang['index_lname_th']          = 'Apellidos';
$lang['index_email_th']          = 'Email';
$lang['index_groups_th']         = 'Grupos';
$lang['index_status_th']         = 'Estado';
$lang['index_action_th']         = 'Acción';
$lang['index_active_link']       = 'Activo';
$lang['index_inactive_link']     = 'Inactivo';
$lang['index_create_user_link']  = 'Crear nuevo usuario';
$lang['index_create_group_link'] = 'Crear nuevo grupo';

// Deactivate User
$lang['deactivate_heading']                  = 'Desactivar usuario';
$lang['deactivate_subheading']               = '¿Estás seguro que quieres desactivar el usuario \'%s\'';
$lang['deactivate_confirm_y_label']          = 'Sí:';
$lang['deactivate_confirm_n_label']          = 'No:';
$lang['deactivate_submit_btn']               = 'Enviar';
$lang['deactivate_validation_confirm_label'] = 'confirmación';
$lang['deactivate_validation_user_id_label'] = 'ID de usuario';

// Create User
$lang['create_user_heading']                           = 'Crear Usuario';
$lang['create_user_subheading']                        = 'Por favor, introduzce la información del usuario.';
$lang['create_user_fname_label']                       = 'Nombre:';
$lang['create_user_lname_label']                       = 'Apellidos:';
$lang['create_user_identity_label']                    = 'Identity:';
$lang['create_user_company_label']                     = 'Compañía:';
$lang['create_user_email_label']                       = 'Email:';
$lang['create_user_phone_label']                       = 'Teléfono:';
$lang['create_user_password_label']                    = 'Contraseña:';
$lang['create_user_password_confirm_label']            = 'Confirmar contraseña:';
$lang['create_user_submit_btn']                        = 'Crear Usuario';
$lang['create_user_validation_fname_label']            = 'Nombre';
$lang['create_user_validation_lname_label']            = 'Apellidos';
$lang['create_user_validation_identity_label']         = 'Identity';
$lang['create_user_validation_email_label']            = 'Correo electrónico';
$lang['create_user_validation_phone_label']            = 'Teléfono';
$lang['create_user_validation_company_label']          = 'Nombre de la compañía';
$lang['create_user_validation_password_label']         = 'Contraseña';
$lang['create_user_validation_password_confirm_label'] = 'Confirmación de contraseña';

// Edit User
$lang['edit_user_heading']                           = 'Editar Usuario';
$lang['edit_user_subheading']                        = 'Por favor introduzca la nueva información del usuario.';
$lang['edit_user_fname_label']                       = 'Nombre:';
$lang['edit_user_lname_label']                       = 'Apellidos:';
$lang['edit_user_company_label']                     = 'Compañía:';
$lang['edit_user_email_label']                       = 'Email:';
$lang['edit_user_phone_label']                       = 'Teléfono:';
$lang['edit_user_password_label']                    = 'Contraseña: (si quieres cambiarla)';
$lang['edit_user_password_confirm_label']            = 'Confirmar contraseña: (si quieres cambiarla)';
$lang['edit_user_groups_heading']                    = 'Miembro de grupos';
$lang['edit_user_submit_btn']                        = 'Guardar Usuario';
$lang['edit_user_validation_fname_label']            = 'Nombre';
$lang['edit_user_validation_lname_label']            = 'Apellidos';
$lang['edit_user_validation_email_label']            = 'Correo electrónico';
$lang['edit_user_validation_phone_label']            = 'Teléfono';
$lang['edit_user_validation_company_label']          = 'Compañía';
$lang['edit_user_validation_groups_label']           = 'Grupos';
$lang['edit_user_validation_password_label']         = 'Contraseña';
$lang['edit_user_validation_password_confirm_label'] = 'Confirmación de contraseña';
$lang['edit_username_label']         = 'Usuario';

// Create Group
$lang['create_group_title']                  = 'Crear Grupo';
$lang['create_group_heading']                = 'Crear Grupo';
$lang['create_group_subheading']             = 'Por favor introduce la información del grupo.';
$lang['create_group_name_label']             = 'Nombre de Grupo:';
$lang['create_group_desc_label']             = 'Descripción:';
$lang['create_group_submit_btn']             = 'Crear Grupo';
$lang['create_group_validation_name_label']  = 'Nombre de Grupo';
$lang['create_group_validation_desc_label']  = 'Descripcion';

// Edit Group
$lang['edit_group_title']                  = 'Editar Grupo';
$lang['edit_group_saved']                  = 'Grupo Guardado';
$lang['edit_group_heading']                = 'Editar Grupo';
$lang['edit_group_subheading']             = 'Por favor, registra la informacion del grupo.';
$lang['edit_group_name_label']             = 'Nombre de Grupo:';
$lang['edit_group_desc_label']             = 'Descripción:';
$lang['edit_group_submit_btn']             = 'Guardar Grupo';
$lang['edit_group_validation_name_label']  = 'Nombre de Grupo';
$lang['edit_group_validation_desc_label']  = 'Descripción';

// Change Password
$lang['change_password_heading']                               = 'Cambiar Contraseña';
$lang['change_password_old_password_label']                    = 'Antigua Contraseña:';
$lang['change_password_new_password_label']                    = 'Nueva Contraseña (de al menos %s caracteres de longitud):';
$lang['change_password_new_password_confirm_label']            = 'Confirmar Nueva Contraseña:';
$lang['change_password_submit_btn']                            = 'Cambiar';
$lang['change_password_validation_old_password_label']         = 'Antigua Contraseña';
$lang['change_password_validation_new_password_label']         = 'Nueva Contraseña';
$lang['change_password_validation_new_password_confirm_label'] = 'Confirmar Nueva Contraseña';

// Forgot Password
$lang['forgot_password_heading']                 = 'He olvidado mi Contraseña';
$lang['forgot_password_subheading']              = 'Por favor, introduce tu %s para que podamos enviarte un email para restablecer tu contraseña.';
$lang['forgot_password_email_label']             = '%s:';
$lang['forgot_password_submit_btn']              = 'Enviar';
$lang['forgot_password_validation_email_label']  = 'Correo Electrónico';
$lang['forgot_password_username_identity_label'] = 'Usuario';
$lang['forgot_password_email_identity_label']    = 'Email';
$lang['forgot_password_email_not_found']         = 'El correo electrónico no existe.';
$lang['forgot_password_identity_not_found']         = 'No record of that username address.';

// Reset Password
$lang['reset_password_heading']                               = 'Cambiar Contraseña';
$lang['reset_password_new_password_label']                    = 'Nueva Contraseña (de al menos %s caracteres de longitud):';
$lang['reset_password_new_password_confirm_label']            = 'Confirmar Nueva Contraseña:';
$lang['reset_password_submit_btn']                            = 'Guardar';
$lang['reset_password_validation_new_password_label']         = 'Nueva Contraseña';
$lang['reset_password_validation_new_password_confirm_label'] = 'Confirmar Nueva Contraseña';

// Activation Email
$lang['email_activate_heading']    = 'Activar cuenta por %s';
$lang['email_activate_subheading'] = 'Por favor ingresa en este link para %s.';
$lang['email_activate_link']       = 'activar tu cuenta';

// Forgot Password Email
$lang['email_forgot_password_heading']    = 'Reestablecer contraseña para %s';
$lang['email_forgot_password_subheading'] = 'Por favor ingresa en este link para %s.';
$lang['email_forgot_password_link']       = 'Restablecer Tu Contraseña';

// New Password Email
$lang['email_new_password_heading']    = 'Nueva contraseña para %s';
$lang['email_new_password_subheading'] = 'Tu contraseña ha sido restablecida a: %s';


//TITULOS DE TABLAS

//Comunes
$lang['no_existe']    					= '%s no existe.';

$lang['record_success']    				= 'Datos Registrados';
$lang['record_error']    				= 'Error';

$lang['record_add_success_text']    	= '%s se registró correctamente.';
$lang['record_add_error_text']    		= 'Hubo un error, %s no se pudo registrar.';

$lang['record_edit_success_text']   	= '%s se actualizó correctamente';
$lang['record_edit_error_text']   		= 'Hubo un error, %s no se pudo modificar.';

$lang['record_remove_success_text']    	= '%s se eliminó correctamente';
$lang['record_remove_error_text']    	= 'Hubo un error, %s no se pudo eliminar.';

$lang['plan_activate_success']    		= 'El plan se activo correctamente.';
$lang['plan_activate_error']    		= 'El plan no se pudo activar, debido a que la carrera ya posee un plan activo.';

$lang['plan_deactivate_success']    	= 'El plan se desactivo correctamente.';
$lang['plan_deactivate_error']    		= 'El plan no se pudo desactivar.';

$lang['table_id_th']    		= 'ID';
$lang['table_name_th']    		= 'Nombre';
$lang['table_type_th']    		= 'Tipo';
$lang['table_actions_th']    	= 'Acciones';
$lang['table_status_th']    	= 'Estado';
$lang['table_orientation_th']   = 'Orientación';

//Carreras
$lang['table_plan_pdf_th']    	= 'Plan PDF';
$lang['table_image_th']    		= 'Imágen';

//Planes
$lang['table_career_th']   		= 'Carrera';
$lang['table_duration_th']    	= 'Duración';

//Orientaciones
$lang['table_plan_th']    		= 'Plan';

//Ciclo_materias
$lang['table_cicle_th']    		= 'Ciclo';
$lang['table_course_th']   		= 'Materia';
$lang['table_regimen_th']    	= 'Regimén';
$lang['table_hours_th']    		= 'Horas';
$lang['table_total_hours_th']   = 'Horas Total';
$lang['table_programa_th']    	= 'Programa';
$lang['table_hours_th']    		= 'Horas';
$lang['table_year_th']    		= 'Año';
$lang['table_code_th']    		= 'Código';


//Docentes
$lang['table_teacher_th']    	= 'Docente';
$lang['table_category_th']    	= 'Categoria';
$lang['table_description_th']   = 'Descripción';
$lang['table_cvar_th']   		= 'CVAR';


//TITULOS DE FORMULARIOS
$lang['form_name']    			= 'Nombre';
$lang['form_last_name']    		= 'Apellido';
$lang['form_second_name']    	= '2° Nombre';
$lang['form_dni']    			= 'DNI';
$lang['form_cuit']    			= 'CUIT';
$lang['form_email']    			= 'E-mail %s';
$lang['form_description']    	= 'Descripción';
$lang['form_category']    		= 'Categoría';

$lang['form_orientation']    	= 'Orientación';
$lang['form_plan']    			= 'Plan';
$lang['form_career']    		= 'Carrera';
$lang['form_duration']    		= 'Duración';
$lang['form_course']  			= 'Materia';
$lang['form_course_type']  		= 'Tipo Materia';
$lang['form_cycle']  			= 'Ciclo';
$lang['form_regimen']  			= 'Regimén';
$lang['form_hours']  			= 'Horas';
$lang['form_total_hours']  		= 'Horas Total';
$lang['form_program']  			= 'Programa';
$lang['form_year']  			= 'Año';
$lang['form_code']  			= 'Código';
$lang['form_plan_pdf']  		= 'Plan PDF';
$lang['form_image']  			= 'Imágen';
$lang['form_presentation']  	= 'Presentación';
$lang['form_career_profile']  	= 'Perfil';


