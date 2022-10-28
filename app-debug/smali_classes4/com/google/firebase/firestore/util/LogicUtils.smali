.class public Lcom/google/firebase/firestore/util/LogicUtils;
.super Ljava/lang/Object;
.source "LogicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 11
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 101
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 103
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-object p0

    .line 107
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 110
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 114
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v2}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v2

    return-object v2

    .line 118
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    return-object v0

    .line 124
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "updatedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/Filter;

    .line 126
    .local v6, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v6    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 136
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "newSubfilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/core/Filter;

    .line 138
    .local v7, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v8, v7, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v8, :cond_4

    .line 139
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_4
    instance-of v8, v7, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v8, :cond_6

    .line 141
    move-object v8, v7

    check-cast v8, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 142
    .local v8, "compositeSubfilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 146
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 151
    :cond_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v7    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    .end local v8    # "compositeSubfilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_6
    :goto_2
    goto :goto_1

    .line 155
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 156
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    return-object v3

    .line 158
    :cond_8
    new-instance v3, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v3
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/CompositeFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 6
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/CompositeFilter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 222
    nop

    .line 223
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    const-string v2, "Found an empty composite filter"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;

    move-result-object v0

    return-object v0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 241
    .local v0, "disjunctionSide":Lcom/google/firebase/firestore/core/CompositeFilter;
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    goto :goto_2

    :cond_3
    move-object v1, p0

    .line 242
    .local v1, "otherSide":Lcom/google/firebase/firestore/core/CompositeFilter;
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/Filter;

    .line 244
    .local v4, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v4, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_3

    .line 246
    :cond_4
    new-instance v3, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v4, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v3
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 4
    .param p0, "fieldFilter"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p1, "compositeFilter"    # Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 208
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "newFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 215
    .local v2, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {p0, v2}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v2    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 217
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 3
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 200
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/firebase/firestore/core/Filter;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v0
.end method

.method protected static applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 2
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/Filter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/Filter;

    .line 180
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 181
    invoke-static {p1}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 183
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .local v0, "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 185
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_1

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 187
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_2

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 190
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/CompositeFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 195
    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :goto_0
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v1

    return-object v1
.end method

.method private static assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V
    .locals 3
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 35
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Only field filters and composite filters are accepted."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected static computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 9
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 250
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 252
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    .line 253
    return-object p0

    .line 256
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 258
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v1}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v1

    return-object v1

    .line 263
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/core/Filter;

    .line 265
    .local v5, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v5}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v5    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 267
    :cond_2
    new-instance v4, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    .line 268
    .local v4, "newFilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v4}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v4

    .line 270
    invoke-static {v4}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    return-object v4

    .line 274
    :cond_3
    instance-of v5, v4, Lcom/google/firebase/firestore/core/CompositeFilter;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "field filters are already in DNF form."

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 276
    .local v5, "newCompositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    nop

    .line 277
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 276
    const-string v8, "Disjunction of filters all of which are already in DNF form is itself in DNF form."

    invoke-static {v6, v8, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 279
    nop

    .line 280
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 279
    const-string v7, "Single-filter composite filters are already in DNF form."

    invoke-static {v2, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 283
    .local v2, "runningResult":Lcom/google/firebase/firestore/core/Filter;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 284
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v2, v6}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v2

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 286
    .end local v3    # "i":I
    :cond_5
    return-object v2
.end method

.method public static getDnfTerms(Lcom/google/firebase/firestore/core/CompositeFilter;)Ljava/util/List;
    .locals 4
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/CompositeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/CompositeFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 307
    .local v0, "result":Lcom/google/firebase/firestore/core/Filter;
    nop

    .line 308
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 307
    const-string v3, "computeDistributedNormalForm did not result in disjunctive normal form"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 312
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static isDisjunctionOfFieldFiltersAndFlatConjunctions(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 5
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 58
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 60
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 62
    .local v3, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v3}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    return v1

    .line 65
    .end local v3    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 69
    .end local v0    # "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_2
    return v1
.end method

.method private static isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 85
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctionOfFieldFiltersAndFlatConjunctions(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 85
    :goto_1
    return v0
.end method

.method private static isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 50
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlatConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 42
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    return v0
.end method
