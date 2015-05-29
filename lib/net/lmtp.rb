require 'net/smtp'

module Net
  class LMTP < SMTP
    def LMTP.default_port
      24
    end

    def helo(domain)
      getok("LHLO #{domain}")
    end

    def ehlo(domain)
      getok("LHLO #{domain}")
    end
  end
end

require 'net/lmtp/version'
