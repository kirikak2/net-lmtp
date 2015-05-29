require 'spec_helper'
require 'stringio'

describe Net::LMTP do
  it 'has a version number' do
    expect(Net::LMTP::VERSION).not_to be nil
  end

  describe "LMTP protocol" do
    before do
      @lmtp = Net::LMTP.new(domain)
      # This is mock instead of Socket.
      allow(@lmtp).to receive(:getok).
        with("LHLO localhost.localdomain").
        and_return("250 OK\n")
    end
    let(:domain){ 'localhost.localdomain' }

    describe "helo" do
      it{ expect(@lmtp.helo(domain)).to eq "250 OK\n" }
    end

    describe "ehlo" do
      it{ expect(@lmtp.ehlo(domain)).to eq "250 OK\n" }
    end
    it{ expect(Net::LMTP.default_port).to eq 24 }
  end
end
