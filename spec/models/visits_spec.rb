require 'spec_helper'

describe Visit do
  it { should belong_to :shortened_url }
end