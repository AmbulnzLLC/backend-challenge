require 'rails_helper'

RSpec.describe PizzaTypePolicy, type: :policy do

  let(:user) { build(:user) }
  let(:admin) { build(:admin) }

  subject { described_class }

  permissions :index? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

  permissions :show? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

  permissions :new? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

  permissions :create? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

  permissions :update? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

  permissions :destroy? do
    it "denies access if not an admin" do
      expect(subject).not_to permit(user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
  end

end
