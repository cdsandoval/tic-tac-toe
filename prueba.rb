def get_p1
    @show_array = ["","X",""]
    show = @show_array.map {|val,index| 
        if val.empty? 
           puts index
        end
    }

    
    
  end

  get_p1