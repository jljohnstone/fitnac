require 'rails_helper'

RSpec.describe Location, type: :model do
  subject { build(:location) }

  describe "validations" do

    it "has a valid factory" do
      is_expected.to be_valid
    end

    it "is invalid without a name" do
      subject.name = nil
      is_expected.to be_invalid
    end

    it "is invalid without a latitude" do
      subject.latitude = nil
      is_expected.to be_invalid
    end

    it "is invalid without a longitude" do
      subject.longitude = nil
      is_expected.to be_invalid
    end

    it "is invalid with a latitude too high" do
      subject.latitude = 100
      is_expected.to be_invalid
    end

    it "is invalid with a latitude too low" do
      subject.latitude = -100
      is_expected.to be_invalid
    end

    it "is invalid with a longitude too high" do
      subject.longitude = 190
      is_expected.to be_invalid
    end

    it "is invalid with a longitude too low" do
      subject.longitude = -190
      is_expected.to be_invalid
    end

  end
end
