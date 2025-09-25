require "test_helper"

describe DataEntriesController do
  it "must get new" do
    get data_entries_new_url
    must_respond_with :success
  end

  it "must get create" do
    get data_entries_create_url
    must_respond_with :success
  end

end
