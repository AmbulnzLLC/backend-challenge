class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV.fetch('admin_email')) do |user|
        user.password = ENV.fetch('admin_pass')
        user.password_confirmation = ENV.fetch('admin_pass')
        user.admin!
      end
  end
end
