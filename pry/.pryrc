puts 'Loading global config from ~/.pryrc'

ENV['PAGER'] = ' less --raw-control-chars -F -X'

Pry.config.editor = "vim"

def r!
  reload!
end

def q!
  exit
end


def create_fixture_from(model)
  model_name = model.table_name
  filename = "#{Rails.root}/test/fixtures/#{model_name}.yml"

  File.open(filename, 'w') do |file|
    text = model.column_names.reject {|current| %w(id created_at updated_at).include?(current) }.to_yaml
    file.write text
  end

  puts "#{filename} written"
rescue StandardError => e
  Rails.logger.error e.message
  Rails.logger.error e.backtrace.join("\n")
end

class Hash
  def diff(other)
    dup.
      delete_if { |k, v| other[k] == v }.
      merge!(other.dup.delete_if { |k, v| has_key?(k) })
  end
end
