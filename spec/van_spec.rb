require 'Van'
describe Van do
  it { is_expected.to respond_to :return_to_dock}
  it { is_expected.to respond_to :deliver_to_garage}
  it { is_expected.to respond_to :check_broken}
  it {is_expected.to respond_to :collect_broken}
  it { is_expected.to respond_to :release_to_van}

end
