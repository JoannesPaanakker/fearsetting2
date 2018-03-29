json.extract! @fear, :id, :fear_descr

json.children do
  json.array! @fixes do |fix|
    json.extract! fix, :id, :fix_descr
  end
  json.array! @preventions do |prevention|
    json.extract! prevention, :id, :prevention_descr
  end
end