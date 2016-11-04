module Plugins::CamaleonPostCreatedAt::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def camaleon_post_created_at_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def camaleon_post_created_at_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def camaleon_post_created_at_on_upgrade(plugin)
  end

  def camaleon_post_created_at_post_form(args)
    args[:extra_settings] <<
        "<div class='form-group'>
            <label class='control-label'>#{cama_t('camaleon_cms.plugins.post_created_at.created_at')}</label>
            <div id='plugin_field_post_created_at' data-locale='#{current_locale}' class='input-group date'>
                <input type='text' name='post[created_at]' data-format='yyyy-MM-dd hh:mm:ss' class='form-control ' value='#{@post.created_at}' />
                <span class='add-on input-group-addon'><span class='glyphicon glyphicon-calendar'></span></span>
            </div>
        </div><script>jQuery(function(){ $('#plugin_field_post_created_at').datetimepicker({format: 'YYYY-MM-DD HH:mm'}) })</script>"
  end
end
