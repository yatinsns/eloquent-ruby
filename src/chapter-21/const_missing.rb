class Document
  def self.const_missing(const_name)
    msg = %Q{
      You tried to reference the constant #{const_name}.
      There is no such constant in the Document class.
    }
  end
end

def main
  puts Document::ABC
end

main if __FILE__ == $0

