# typed: true

class AAA
  class BBB
  end

  YYY = 1
end

p AA # error: Unable to resolve
#   ^ completion: AAA
#   ^ apply-completion: [A] item: 0

p AAA::B # error: Unable to resolve
#       ^ completion: BBB
#       ^ apply-completion: [B] item: 0

p AAA::Y # error: Unable to resolve
#       ^ completion: YYY
#       ^ apply-completion: [C] item: 0
