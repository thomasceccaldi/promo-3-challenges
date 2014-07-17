def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent

  race_array.map!{ |cheval| "#{race_array.index(cheval)+1}-#{cheval}" }


  race_array.reverse!

  race_array.map! { |cheval| "#{cheval}!" }

  p race_array


end

pmu_format!(["cheval1", "cheval2"])



