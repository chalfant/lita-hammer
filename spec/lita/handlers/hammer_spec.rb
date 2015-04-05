require "spec_helper"

describe Lita::Handlers::Hammer, lita_handler: true do
  it { is_expected.to route("quit").to(:too_legit) }
  it { is_expected.to route("QUIT").to(:too_legit) }
  it { is_expected.to route("legit").to(:too_legit) }
  it { is_expected.to route("LEGIT").to(:too_legit) }
  it { is_expected.to route("touch").to(:touch_this) }
  it { is_expected.to route("TOUCH").to(:touch_this) }
end
