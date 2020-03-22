# This file was generated, do not modify it. # hide
using FredData, PlotlyJS

data = get_data(Fred(), "GDPC1"; vintage_dates="2008-09-15")
vals = data.data.value

trace = scatter(;x=1:length(vals), y=vals, mode="markers")
plt = plot(trace)

fdplotly(json(plt))