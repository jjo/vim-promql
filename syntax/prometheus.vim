if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "prometheus"

syntax match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"
"syntax region Object start="(" end=")"
syntax keyword prometheusKeyword ALERT IF FOR LABELS ANNOTATIONS AND WITH

syntax keyword prometheusFunction abs absent ceil changes clamp_max clamp_min
syntax keyword prometheusFunction count_scalar day_of_month day_of_week
syntax keyword prometheusFunction days_in_month delta deriv drop_common_labels
syntax keyword prometheusFunction exp floor historgram_quantile holt_winters
syntax keyword prometheusFunction hour isdelta increase irate label_replace label_join
syntax keyword prometheusFunction ln log2 log10 minute month predict_linear
syntax keyword prometheusFunction rate resets round scalar sort sort sort_desc
syntax keyword prometheusFunction sqrt time vector year avg_over_time
syntax keyword prometheusFunction min_over_time max_over_time sum_over_time
syntax keyword prometheusFunction count_over_time quantile_over_time
syntax keyword prometheusFunction stddev_over_time stdvar_over_time

syntax match prometheusComment '#.*'

syntax match prometheusOperator "\v[\+\-\*\/\%\^\=]"
syntax match prometheusOperator "\v\=\="
syntax match prometheusOperator "\v\!\="
syntax match prometheusOperator "\v\>"
syntax match prometheusOperator "\v\>\="
syntax match prometheusOperator "\v\<"
syntax match prometheusOperator "\v\<\="
syntax match prometheusOperator "\v\=\~"
syntax match prometheusOperator "\v\!\~"

syntax match prometheusSpecial "\v[()]"

syntax keyword prometheusAggrOperator sum min max avg stddev stdvar count
syntax keyword prometheusAggrOperator count_values bottomk topk quantile
syntax keyword prometheusAggrOperator on group by or and unless with by group_left group_right

syntax match prometheusRangeSelector "\d\+[smhdwy]"

syntax region String start=+\z(#*\)\z("\)+ skip="\\\z2" end="\z2\z1"

highlight link prometheusKeyword Keyword
highlight link prometheusRangeSelector Keyword
highlight link prometheusComment Comment
highlight link prometheusOperator Operator
highlight link prometheusAggrOperator Operator
highlight link prometheusFunction Function
highlight link prometheusSpecial Special

highlight Function ctermfg=DarkGreen
highlight Operator ctermfg=DarkCyan
