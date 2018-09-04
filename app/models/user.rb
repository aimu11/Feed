class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :business, dependent: :destroy
  has_one :customer, dependent: :destroy

  after_create :init_role

def init_role
    customer_params = [
      {
        user: self,
        first_name: "",
        last_name: "",
        phone_number: "0101010101",
      }]
      Customer.create!(customer_params)
end

  # after_save :assign_customer_id_to_new_user
  #
  # def assign_customer_id_to_new_user
  #   self.customer = Customer.new
  #   self.update
  #
  #   if self.save
  #     redirect_to dashboard_path
  #   else
  #     redirect_to foods_path
  #   end
  #
  # end

end

  # new_customer = Customer.new
  # new_customer.user = self
  # self.save
  # new_customer.save
