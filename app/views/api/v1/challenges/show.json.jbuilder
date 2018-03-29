json.extract! @challenge, :id, :challenge_descr, :acceptable, :cost_inaction_hy, :cost_inaction_yr, :cost_inaction_3y

json.children do
  t = 0
  json.array! @fears do |fear|
    json.extract! fear, :id, :fear_descr
      json.children do
        json.array! @arr_p[t] do |prevention|
          json.extract! prevention, :id, :prevention_descr, :fear_id
        end
        json.array! @arr_f[t] do |fix|
          json.extract! fix, :id, :fix_descr, :fear_id
        end
      end
    t += 1  
  end
  json.array! @benefits do |benefit|
    json.extract! benefit, :id, :benefit_descr
  end
end