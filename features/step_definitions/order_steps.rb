Given(/^the following orders exist:$/) do |table|
  table.hashes.each do |order|
    FactoryGirl.create(:order, order)
  end
end
