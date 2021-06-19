PuppetLint.new_check(:anchor_resource) do
  def check
    resource_indexes.each do |resource|
      next unless resource[:type].value == 'anchor'
      notify(
        :warning,
        message: 'manifest includes anchor resource',
        line:    resource[:type].line,
        column:  resource[:type].column
      )
    end
  end
  def uncovered_code_test
    puts "Just testing codecov"
  end
end
