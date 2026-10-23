// Atualiza o relógio do rodapé do portal Arcanjo SA
function atualizarRelogio() {
  var el = document.getElementById("relogio");
  if (el) {
    el.textContent = new Date().toLocaleString("pt-BR");
  }
}
atualizarRelogio();
setInterval(atualizarRelogio, 1000);
