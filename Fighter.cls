public class Fighter {
    public String name;
    public Integer health, damagePerAttack;
    public Fighter(String name, Integer health, Integer damagePerAttack) {
        this.name = name;
        this.health = health;
        this.damagePerAttack = damagePerAttack;
    }

    public static String definewhoisWinner(Fighter f1, Fighter f2, String attack1) {
        String winnername = '';
        if (attack1 == f1.name || attack1 == f2.name) {
            while (f1.health > 0 & f2.health > 0) {
                f1.health -= f2.damagePerAttack;
                f2.health -= f1.damagePerAttack;
                if (f1.health <= 0) {
                    winnername.equals(f2.name);
                } else {
                    winnername.equals(f1.name);
                }
            }
        }
//        System.debug(definewhoisWinner(f1, f2, attack1));
        return winnername;
    }
}
