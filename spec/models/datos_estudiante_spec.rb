require 'rails_helper'

RSpec.describe DatosEstudiante, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "nombres" do
    it { should validate_presence_of :nombres }
    it { should_not allow_value("123123").for(:nombres) }
    it { should allow_value("abcd").for(:nombres) }
  end

end
