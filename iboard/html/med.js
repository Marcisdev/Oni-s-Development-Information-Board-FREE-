var healthBar = document.getElementById('health-bar');
var healthText = document.getElementById('health-text');

// Az NUI által küldött üzenetek figyelése
window.addEventListener('message', function(event) {
  if (event.data.type === 'updateHealth') {
    // Az életerő százalékának frissítése
    var healthPercent = event.data.value;
    healthBar.style.width = healthPercent + '%';
    healthText.textContent = healthPercent + '%';
  }
});
