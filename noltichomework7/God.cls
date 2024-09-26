public virtual class God {

   /* public Woman Woman;
    public Man Man;*/

    public Object createMan(String name){
        return new Human.Man('Adam');
    }

    public Object createWoman(String name){
        return new Human.Woman('Eve');
    }
}