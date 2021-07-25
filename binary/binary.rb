def binary_space n
  return 0 if n < -1 || n > 2_147_483_648
  spaces = n.to_s(2).scan(/1{1}0+1{1}/)
  spaces.empty? ? 0 : spaces.max_by(&:length).size - 2
end
