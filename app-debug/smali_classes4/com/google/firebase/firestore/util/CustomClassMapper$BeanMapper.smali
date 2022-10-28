.class Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;
.super Ljava/lang/Object;
.source "CustomClassMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeanMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final documentIdPropertyNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serverTimestamps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final throwOnUnknownProperties:Z

.field private final warnOnUnknownProperties:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 601
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 603
    const-class v0, Lcom/google/firebase/firestore/ThrowOnExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    .line 604
    const-class v0, Lcom/google/firebase/firestore/IgnoreExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 611
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    .line 612
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    .line 616
    const/4 v0, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 617
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    goto :goto_0

    .line 618
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x0

    move-object v2, v3

    .line 622
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_0
    iput-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    .line 624
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 625
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeGetter(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 626
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 629
    iget-object v8, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 636
    iget-object v8, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyGetterAnnotations(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found conflicting getters for name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 643
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeField(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 644
    invoke-static {v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 645
    .restart local v7    # "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyFieldAnnotations(Ljava/lang/reflect/Field;)V

    .line 642
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 653
    :cond_4
    move-object v3, p1

    .line 656
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 657
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->shouldIncludeSetter(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 658
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, "propertyName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 660
    .local v9, "existingPropertyName":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 661
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 668
    iget-object v10, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    .line 669
    .local v10, "existingSetter":Ljava/lang/reflect/Method;
    if-nez v10, :cond_6

    .line 670
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 671
    iget-object v11, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applySetterAnnotations(Ljava/lang/reflect/Method;)V

    goto/16 :goto_5

    .line 673
    :cond_6
    invoke-static {v7, v10}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 676
    if-ne v3, p1, :cond_7

    .line 678
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 680
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has multiple setter overloads with name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found conflicting setters with name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (conflicts with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 689
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " defined on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    .end local v10    # "existingSetter":Ljava/lang/reflect/Method;
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found setter on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with invalid case-sensitive name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "existingPropertyName":Ljava/lang/String;
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 700
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 701
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-static {v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 705
    .restart local v8    # "propertyName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 706
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 707
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 708
    iget-object v9, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->applyFieldAnnotations(Ljava/lang/reflect/Field;)V

    .line 700
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "propertyName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 715
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 716
    if-eqz v3, :cond_d

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 718
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 723
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 724
    .local v1, "docIdProperty":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    .line 725
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@DocumentId is annotated on property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 729
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but no field or public setter was found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    .end local v1    # "docIdProperty":Ljava/lang/String;
    :cond_f
    :goto_8
    goto :goto_7

    .line 733
    :cond_10
    return-void

    .line 719
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No properties to serialize found on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 572
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    .line 572
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    .line 736
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 737
    .local v0, "oldValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two getters or fields with conflicting case sensitivity for property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 741
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_1
    :goto_0
    return-void
.end method

.method private static annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .line 1095
    const-class v0, Lcom/google/firebase/firestore/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const-class v0, Lcom/google/firebase/firestore/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/PropertyName;

    .line 1097
    .local v0, "annotation":Lcom/google/firebase/firestore/PropertyName;
    invoke-interface {v0}, Lcom/google/firebase/firestore/PropertyName;->value()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1100
    .end local v0    # "annotation":Lcom/google/firebase/firestore/PropertyName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private applyFieldAnnotations(Ljava/lang/reflect/Field;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 915
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 917
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_1

    const-class v1, Lcom/google/firebase/Timestamp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is annotated with @ServerTimestamp but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of Date or Timestamp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 930
    .restart local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Field"

    const-string v2, "is"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 931
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method

.method private applyGetterAnnotations(Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 936
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 938
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_1

    const-class v1, Lcom/google/firebase/Timestamp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 941
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is annotated with @ServerTimestamp but returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of Date or Timestamp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 950
    .end local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 952
    .restart local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Method"

    const-string v2, "returns"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 953
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v0    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method

.method private applySetterAnnotations(Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 958
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Lcom/google/firebase/firestore/ServerTimestamp;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 966
    const-class v0, Lcom/google/firebase/firestore/DocumentId;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 968
    .local v0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Method"

    const-string v2, "accepts"

    invoke-direct {p0, v1, v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 969
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v0    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    .line 959
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 961
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is annotated with @ServerTimestamp but should not be. @ServerTimestamp can only be applied to fields and getters, not setters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidDocumentIdType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "fieldDescription"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/reflect/Type;

    .line 974
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    const-class v0, Ljava/lang/String;

    if-eq p3, v0, :cond_1

    const-class v0, Lcom/google/firebase/firestore/DocumentReference;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is annotated with @DocumentId but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of String or DocumentReference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_1
    :goto_0
    return-void
.end method

.method private static isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "base"    # Ljava/lang/reflect/Method;
    .param p1, "override"    # Ljava/lang/reflect/Method;

    .line 1069
    nop

    .line 1070
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 1069
    const-string v1, "Expected override from a base class"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Expected void return type"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1076
    .local v0, "baseParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1077
    .local v1, "overrideParameterTypes":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Expected exactly one parameter"

    invoke-static {v2, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1078
    array-length v2, v1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$500(ZLjava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v3

    aget-object v5, v1, v3

    .line 1081
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 1080
    :goto_2
    return v3
.end method

.method private populateDocumentIdProperties(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;Ljava/lang/Object;Ljava/util/HashSet;)V
    .locals 9
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            "TT;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 817
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    .local p4, "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 818
    .local v1, "docIdPropertyName":Ljava/lang/String;
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 828
    iget-object v2, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v2

    .line 829
    .local v2, "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 830
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 831
    .local v3, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 832
    .local v4, "params":[Ljava/lang/reflect/Type;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 835
    const/4 v5, 0x0

    aget-object v7, v4, v5

    invoke-direct {p0, v7, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 836
    .local v7, "resolvedType":Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    .line 837
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v3, p3, v6}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 839
    :cond_0
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    aput-object v8, v6, v5

    invoke-static {v3, p3, v6}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    .end local v4    # "params":[Ljava/lang/reflect/Type;
    .end local v7    # "resolvedType":Ljava/lang/reflect/Type;
    :goto_1
    goto :goto_3

    .line 833
    .restart local v3    # "setter":Ljava/lang/reflect/Method;
    .restart local v4    # "params":[Ljava/lang/reflect/Type;
    :cond_1
    const-string v0, "Setter does not have exactly one parameter"

    invoke-static {v2, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 842
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    .end local v4    # "params":[Ljava/lang/reflect/Type;
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 844
    .local v3, "docIdField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_3

    .line 845
    iget-object v4, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 847
    :cond_3
    iget-object v4, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_2
    nop

    .line 853
    .end local v1    # "docIdPropertyName":Ljava/lang/String;
    .end local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v3    # "docIdField":Ljava/lang/reflect/Field;
    :goto_3
    goto :goto_0

    .line 849
    .restart local v1    # "docIdPropertyName":Ljava/lang/String;
    .restart local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .restart local v3    # "docIdField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 819
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v3    # "docIdField":Ljava/lang/reflect/Field;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was found from document "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    .line 823
    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cannot apply @DocumentId on this property for class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 825
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "docIdPropertyName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 1085
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 1090
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serializedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 857
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 858
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 859
    .local v0, "resolvedType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    .line 862
    return-object v0

    .line 860
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 865
    .end local v0    # "resolvedType":Ljava/lang/reflect/Type;
    :cond_1
    return-object p1
.end method

.method private static serializedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1104
    const-string v0, "get"

    const-string v1, "set"

    const-string v2, "is"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "prefixes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1106
    .local v1, "methodPrefix":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1107
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    move-object v1, v4

    .line 1106
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    if-eqz v1, :cond_3

    .line 1114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "strippedName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1118
    .local v3, "chars":[C
    const/4 v4, 0x0

    .line 1119
    .local v4, "pos":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-char v5, v3, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1120
    aget-char v5, v3, v4

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v3, v4

    .line 1121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1123
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 1112
    .end local v2    # "strippedName":Ljava/lang/String;
    .end local v3    # "chars":[C
    .end local v4    # "pos":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Bean prefix for method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static shouldIncludeField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 1045
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1046
    return v1

    .line 1049
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1050
    return v1

    .line 1053
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    return v1

    .line 1057
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1058
    return v1

    .line 1061
    :cond_3
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1062
    return v1

    .line 1064
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldIncludeGetter(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 986
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "is"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    return v1

    .line 990
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    return v1

    .line 994
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 995
    return v1

    .line 998
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    return v1

    .line 1002
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1003
    return v1

    .line 1006
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 1007
    return v1

    .line 1010
    :cond_5
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1011
    return v1

    .line 1013
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldIncludeSetter(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 1017
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1018
    return v1

    .line 1021
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    return v1

    .line 1025
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    return v1

    .line 1029
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1030
    return v1

    .line 1033
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 1034
    return v1

    .line 1037
    :cond_4
    const-class v0, Lcom/google/firebase/firestore/Exclude;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1038
    return v1

    .line 1040
    :cond_5
    return v2
.end method


# virtual methods
.method deserialize(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 1
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method deserialize(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 16
    .param p3, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 753
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_7

    .line 762
    invoke-static {v0}, Lcom/google/firebase/firestore/util/ApiUtil;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v4

    .line 763
    .local v4, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 764
    .local v5, "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 765
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 766
    .local v7, "propertyName":Ljava/lang/String;
    iget-object v8, v3, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-virtual {v8, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v8

    .line 767
    .local v8, "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    iget-object v9, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    .line 768
    iget-object v9, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    .line 769
    .local v9, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v12

    .line 770
    .local v12, "params":[Ljava/lang/reflect/Type;
    array-length v13, v12

    if-ne v13, v11, :cond_0

    .line 773
    aget-object v13, v12, v10

    invoke-direct {v1, v13, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 774
    .local v13, "resolvedType":Ljava/lang/reflect/Type;
    nop

    .line 776
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v15

    .line 775
    invoke-static {v14, v13, v15}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v14

    .line 777
    .local v14, "value":Ljava/lang/Object;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v14, v11, v10

    invoke-static {v9, v4, v11}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 779
    .end local v9    # "setter":Ljava/lang/reflect/Method;
    .end local v12    # "params":[Ljava/lang/reflect/Type;
    .end local v13    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v14    # "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 771
    .restart local v9    # "setter":Ljava/lang/reflect/Method;
    .restart local v12    # "params":[Ljava/lang/reflect/Type;
    :cond_0
    const-string v0, "Setter does not have exactly one parameter"

    invoke-static {v8, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 779
    .end local v9    # "setter":Ljava/lang/reflect/Method;
    .end local v12    # "params":[Ljava/lang/reflect/Type;
    :cond_1
    iget-object v9, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 780
    iget-object v9, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 781
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-direct {v1, v10, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 782
    .local v10, "resolvedType":Ljava/lang/reflect/Type;
    nop

    .line 784
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v12

    .line 783
    invoke-static {v11, v10, v12}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v11

    .line 786
    .local v11, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v9, v4, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    nop

    .line 790
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v11    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 787
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "resolvedType":Ljava/lang/reflect/Type;
    .restart local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 788
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 792
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No setter/field for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " found on class "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 793
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 794
    .local v9, "message":Ljava/lang/String;
    iget-object v12, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 795
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (fields/setters are case sensitive!)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 797
    :cond_3
    iget-boolean v12, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    if-nez v12, :cond_5

    .line 799
    iget-boolean v12, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    if-eqz v12, :cond_4

    .line 800
    const-class v12, Lcom/google/firebase/firestore/util/CustomClassMapper;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v10

    const-string v10, "%s"

    invoke-static {v12, v10, v11}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v9    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 798
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "propertyName":Ljava/lang/String;
    .restart local v8    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "childPath":Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .end local v9    # "message":Ljava/lang/String;
    :cond_6
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->populateDocumentIdProperties(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 806
    return-object v4

    .line 754
    .end local v4    # "instance":Ljava/lang/Object;, "TT;"
    .end local v5    # "deserialzedProperties":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    iget-object v0, v3, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 757
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not define a no-argument constructor. If you are using ProGuard, make sure these constructors are not stripped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 754
    invoke-static {v0, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/util/Map;
    .locals 6
    .param p2, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 879
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 881
    .local v2, "property":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->documentIdPropertyNames:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    goto :goto_0

    .line 886
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 888
    .local v3, "getter":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v4}, Lcom/google/firebase/firestore/util/ApiUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 889
    .local v3, "propertyValue":Ljava/lang/Object;
    goto :goto_1

    .line 891
    .end local v3    # "propertyValue":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 892
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_3

    .line 896
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .local v4, "propertyValue":Ljava/lang/Object;
    move-object v3, v4

    .line 903
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .local v3, "propertyValue":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serverTimestamps:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 905
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->serverTimestamp()Lcom/google/firebase/firestore/FieldValue;

    move-result-object v4

    .local v4, "serializedValue":Ljava/lang/Object;
    goto :goto_2

    .line 907
    .end local v4    # "serializedValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->access$400(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v4

    .line 909
    .restart local v4    # "serializedValue":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/Object;
    .end local v4    # "serializedValue":Ljava/lang/Object;
    goto :goto_0

    .line 897
    .restart local v2    # "property":Ljava/lang/String;
    .local v3, "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 893
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bean property without field or getter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_4
    return-object v0

    .line 872
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t serialize object of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with BeanMapper for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
