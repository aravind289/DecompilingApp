.class public Lcom/google/firebase/firestore/AggregateQuerySnapshot;
.super Ljava/lang/Object;
.source "AggregateQuerySnapshot.java"


# instance fields
.field private final count:J

.field private final query:Lcom/google/firebase/firestore/AggregateQuery;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/AggregateQuery;J)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/firestore/AggregateQuery;
    .param p2, "count"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    .line 37
    iput-wide p2, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->count:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    .line 72
    .local v1, "other":Lcom/google/firebase/firestore/AggregateQuerySnapshot;
    iget-wide v3, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->count:J

    iget-wide v5, v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->count:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/AggregateQuery;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->count:J

    return-wide v0
.end method

.method public getQuery()Lcom/google/firebase/firestore/AggregateQuery;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->count:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
