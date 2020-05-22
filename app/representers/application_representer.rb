class ApplicationRepresenter
  class << self
    def list(items)
      items.map { |k, v| list_item(k, v) }
    end

    def list_item(k, v)
      {
        text: v,
        value: k
      }
    end

    def kinds_list
      pluralize_dict(I18n.t(:kinds))
    end

    def get_kind(k)
      kinds_list[k.to_sym]
    end

    def types_list
      I18n.t(:types).each do |kind, kind_types|
        kind_types = pluralize_dict(kind_types)
      end
    end

    def get_type(k, t)
      types_list[k.to_sym][t.to_sym]
    end

    def roles_list
      I18n.t(:roles)
    end

    def get_role(r)
      roles_list[r.to_sym]
    end

    def sources_list
      I18n.t(:sources)
    end

    def get_source(s)
      return nil unless s
      
      sources_list[s.to_sym]
    end
  end
end