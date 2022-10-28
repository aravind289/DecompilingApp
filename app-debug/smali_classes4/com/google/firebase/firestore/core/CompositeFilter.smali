.class public Lcom/google/firebase/firestore/core/CompositeFilter;
.super Lcom/google/firebase/firestore/core/Filter;
.source "CompositeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    }
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedFlattenedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V
    .locals 1
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Filter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 54
    return-void
.end method

.method private findFirstMatchingFilter(Lcom/google/firebase/firestore/util/Function;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/firestore/core/FieldFilter;"
        }
    .end annotation

    .line 133
    .local p1, "condition":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/FieldFilter;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 134
    .local v1, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    return-object v1

    .line 137
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getFirstInequalityField$0(Lcom/google/firebase/firestore/core/FieldFilter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "f"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 83
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 187
    .local v1, "other":Lcom/google/firebase/firestore/core/CompositeFilter;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 181
    .end local v1    # "other":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_2
    :goto_0
    return v0
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInequalityField()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 2

    .line 83
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/core/CompositeFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->findFirstMatchingFilter(Lcom/google/firebase/firestore/util/Function;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v0

    .line 84
    .local v0, "found":Lcom/google/firebase/firestore/core/FieldFilter;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFlattenedFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 72
    .local v1, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .end local v1    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 192
    const/16 v0, 0x25

    .line 193
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 195
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isConjunction()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisjunction()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlat()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 110
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v2, v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v2, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isFlatConjunction()Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 146
    .local v3, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    return v2

    .line 149
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    return v1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 154
    .restart local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    return v1

    .line 157
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_3
    goto :goto_1

    .line 158
    :cond_4
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;)",
            "Lcom/google/firebase/firestore/core/CompositeFilter;"
        }
    .end annotation

    .line 121
    .local p1, "otherFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v0, "mergedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method
