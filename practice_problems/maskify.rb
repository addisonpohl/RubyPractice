#Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.


def maskify(cc)
  if cc.length > 4
    len = cc.length() -4
    replaced = "#" * len
    replaced + cc[-4..-1]
  else
    return cc
  end
end


puts maskify("4556364607935616")
puts maskify("1")
