baseline = c(0.9231, 0.8981, 0.9313, 0.9149, 0.9175)
chemb = c(0.9387, 0.9529, 0.9446, 0.9482, 0.9498)
chemb_md = c(0.948, 0.9597, 0.9482, 0.9424, 0.9525)
transf = c(0.9265, 0.9263, 0.9092, 0.9222, 0.9293)
transf_md = c(0.9423, 0.9301, 0.9352, 0.9429, 0.9515)

plot_var_int <- function(model) {
  print(c(mean(model) - 3*var(model),mean(model), mean(model) + 3*var(model) ))
}

#3*sigma intervals
plot_var_int(baseline)
plot_var_int(chemb)
plot_var_int(chemb_md)
plot_var_int(transf)
plot_var_int(transf_md)

#проверка гипотез, хотя на 5-ти точках это смешно делать...

t.test(baseline, chemb, alternative = "less", var.equal = FALSE)$p.value

t.test(baseline, chemb_md, alternative = "less", var.equal = FALSE)$p.value

t.test(baseline, transf, alternative = "less", var.equal = FALSE)$p.value

t.test(baseline, transf_md, alternative = "less", var.equal = FALSE)$p.value

t.test(chemb, chemb_md, alternative = "less", var.equal = FALSE)$p.value

t.test(transf, transf_md, alternative = "less", var.equal = FALSE)$p.value

t.test(transf, chemb, alternative = "less", var.equal = FALSE)$p.value

t.test(transf_md, chemb_md, alternative = "less", var.equal = FALSE)$p.value
