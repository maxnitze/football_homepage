# spec/support/controller_macros.rb
module ControllerMacros
  UserRole.all.each do |user_role|
    eval %{
      def login_#{user_role.symbol}
        before(:each) do
          @request.env['devise.mapping'] = Devise.mappings[:#{user_role.symbol}]
          #{user_role.symbol} = FactoryGirl.create(:user, :#{user_role.symbol})
          #{user_role.symbol}.confirmed_at = Time.zone.now
          #{user_role.symbol}.save
          sign_in #{user_role.symbol}
        end
      end
    }
  end

  def login_user *user_roles
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create(:user, *user_roles)
      user.confirmed_at = Time.zone.now
      user.save
      sign_in user
    end
  end
end
