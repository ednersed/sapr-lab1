# Ограничения для ЛР1, вариант 8 (DE2-115, EP4CE115F29C7)
# Схема комбинационная: тумблеры D[2..0] -> счетчик -> распределитель -> Y[2..0].
# Реального тактового сигнала нет, поэтому задаем виртуальный клок 50 МГц
# и ограничиваем путь от входов до выходов.

create_clock -name virt_clk -period 20.000

derive_clock_uncertainty

set_input_delay  -clock virt_clk 0.000 [get_ports {D[*]}]
set_output_delay -clock virt_clk 0.000 [get_ports {Y[*]}]

