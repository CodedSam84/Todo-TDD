require "rails_helper"

describe Todoo, "#completed?" do
  it "returns true if completed_at is set" do
    todoo = Todoo.new(completed_at: Time.current)
    expect(todoo).to be_completed
  end
  it "returns false if completed_at is nil" do
    todoo = Todoo.new(completed_at: nil)
    expect(todoo).not_to be_completed
  end
end