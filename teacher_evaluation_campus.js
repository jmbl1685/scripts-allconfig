let values = {
	siempre: "1",
	casi_siempre: "2",
	a_menudo: "3",
	pocas_veces: "4",
	nunca: "5"
}

Array.from(document.getElementsByClassName('PSDROPDOWNLIST')).map((item, index) => {
	javascript:document.getElementById(`FS_EVDCEST2_WRK_FS_DESPLEGABLE$${index}`).value = values.siempre
	javascript:document.getElementById(`FS_EVDCEST2_WRK_FS_DESPLEGABLE$${index}`).onchange()
})
