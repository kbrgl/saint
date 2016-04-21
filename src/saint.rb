class Saint
  def self.parse(template, bindings)
    bindings.each do |b, v|
      if v.respond_to? :call then
        template.gsub!(/{{\s?#{b.to_s}\s?}}/, v.call.to_s)
      else
        template.gsub!(/{{\s?#{b.to_s}\s?}}/, v.to_s)
      end
    end
    template
  end
end
