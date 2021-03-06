=begin
  Camaleon CMS is a content management system
  Copyright (C) 2015 by Owen Peredo Diaz
  Email: owenperedo@gmail.com
  This program is free software: you can redistribute it and/or modify   it under the terms of the GNU Affero General Public License as  published by the Free Software Foundation, either version 3 of the  License, or (at your option) any later version.
  This program is distributed in the hope that it will be useful,  but WITHOUT ANY WARRANTY; without even the implied warranty of  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the  GNU Affero General Public License (GPLv3) for more details.
=end
class Plugins::Ecommerce::AdminController < CamaleonCms::Apps::PluginsAdminController
  before_action :verify_ecommerce_permission
  add_breadcrumb I18n.t("plugin.ecommerce.e_commerce")
  def index
    # here your actions for admin panel
  end

  private
  def verify_ecommerce_permission
    authorize! :posts, get_commerce_post_type
  end
end
