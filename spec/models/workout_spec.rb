require 'rails_helper'

RSpec.describe Workout, type: :model do
  subject { build(:workout) }

  describe "validations" do

    it "has a valid factory" do
      is_expected.to be_valid
    end

    it "is invalid without a starts_at datetime" do
      subject.starts_at = nil
      is_expected.to be_invalid
    end

    it "is invalid if the starts_at datetime is in the past" do
      subject.starts_at = 2.days.ago
      is_expected.to be_invalid
    end

    it "is invalid without a location" do
      subject.location = nil
      is_expected.to be_invalid
    end

  end
end
