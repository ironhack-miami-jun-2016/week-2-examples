class Task
    attr_reader :content, :id

    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @is_complete = false
    end

    def complete?
      if @is_complete == true
        true
      else
        false
      end
    end
end
