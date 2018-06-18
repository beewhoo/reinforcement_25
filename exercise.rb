ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

           cont = []
           ballots.each do |ballot|
             ballot.values.each do |name|
               cont << name
             end
           end


           cont_score = {}
           cont.uniq!.each do |con|
             cont_score[con] = 0
           end

           p cont
           p cont_score

           ballots.each do |ballot|
             ballot.each do |key, value|
               if key == 1
                 cont_score[value] += 3
               elsif key == 2
                 cont_score[value] += 2
               elsif key == 3
                 cont_score[value] +=  1
               end
            end
          end


p cont_score
