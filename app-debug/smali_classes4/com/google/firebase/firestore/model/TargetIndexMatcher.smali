.class public Lcom/google/firebase/firestore/model/TargetIndexMatcher;
.super Ljava/lang/Object;
.source "TargetIndexMatcher.java"


# instance fields
.field private final collectionId:Ljava/lang/String;

.field private final equalityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

.field private final orderBys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Target;)V
    .locals 6
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    nop

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->collectionId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->orderBys:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    .line 100
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 101
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 102
    .local v2, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x1

    :goto_3
    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    const-string v5, "Only a single inequality is supported"

    invoke-static {v3, v5, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iput-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

    goto :goto_4

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    .end local v2    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :goto_4
    goto :goto_1

    .line 111
    :cond_4
    return-void
.end method

.method private hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 3
    .param p1, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 190
    iget-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 191
    .local v1, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-direct {p0, v1, p1}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 5
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p2, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 199
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    nop

    .line 203
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 204
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 205
    .local v1, "isArrayOperator":Z
    :goto_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 200
    .end local v1    # "isArrayOperator":Z
    :cond_4
    :goto_2
    return v0
.end method

.method private matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 3
    .param p1, "orderBy"    # Lcom/google/firebase/firestore/core/OrderBy;
    .param p2, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 209
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 212
    :goto_0
    return v1
.end method


# virtual methods
.method public servedByIndex(Lcom/google/firebase/firestore/model/FieldIndex;)Z
    .locals 8
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 135
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Collection IDs do not match"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getArraySegment()Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v0

    .line 139
    .local v0, "arraySegment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    return v1

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->orderBys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    .local v2, "orderBys":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    const/4 v4, 0x0

    .line 148
    .local v4, "segmentIndex":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 154
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 165
    return v6

    .line 170
    :cond_3
    iget-object v5, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v5, :cond_6

    .line 171
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 172
    .local v5, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    iget-object v7, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilter:Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-direct {p0, v7, v5}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-direct {p0, v7, v5}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 175
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 173
    :cond_5
    :goto_2
    return v1

    .line 179
    .end local v5    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 180
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 181
    .restart local v5    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-direct {p0, v7, v5}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    .line 179
    .end local v5    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 182
    .restart local v5    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_8
    :goto_4
    return v1

    .line 186
    .end local v5    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_9
    return v6
.end method
