# simple solution, not optimized, not clever
# made simple assumptions
let alice30daysEarning: int = 400 * 2
let bob30daysEarning: float64 = 3.14 * 8 * 30

echo "Alice earns $400 every 15 days."
echo "Bob earns $3.14 per hour and works 8 hrs a day, 7 days a week."
echo "Does Alice earned more than Bob after 30 days? ",
    float(alice30daysEarning) > bob30daysEarning
echo "Since after 30 days:"
echo "\t- Alice earned $", float(alice30daysEarning)
echo "\t- Bob earned $", bob30daysEarning
