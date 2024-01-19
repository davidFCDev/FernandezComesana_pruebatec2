package com.softtek.pruebatec2.logic;

import com.softtek.pruebatec2.logic.Turn;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-01-18T21:46:42")
@StaticMetamodel(Citizen.class)
public class Citizen_ { 

    public static volatile SingularAttribute<Citizen, String> surname;
    public static volatile SingularAttribute<Citizen, String> name;
    public static volatile SingularAttribute<Citizen, String> dni;
    public static volatile ListAttribute<Citizen, Turn> turns;

}