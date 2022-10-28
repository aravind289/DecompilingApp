.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EnumMultiset$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient counts:[I

.field private transient distinctElements:I

.field private transient enumConstants:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient size:J

.field private transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 93
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/EnumMultiset;

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/EnumMultiset;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/EnumMultiset;

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    return-object v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/EnumMultiset;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/EnumMultiset;

    .line 47
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return v0
.end method

.method static synthetic access$322(Lcom/google/common/collect/EnumMultiset;J)J
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/EnumMultiset;
    .param p1, "x1"    # J

    .line 47
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    return-wide v0
.end method

.method private checkIsE(Ljava/lang/Object;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected an "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 51
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 66
    .local v1, "multiset":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 67
    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object v0

    .line 78
    .local v0, "result":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 79
    return-object v0
.end method

.method private isActuallyE(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 97
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 99
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 100
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 102
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "index":I
    :cond_1
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 300
    .local v0, "localType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    iput-object v1, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 302
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 303
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 304
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 287
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 288
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 289
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;I)I
    .locals 8
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    .line 141
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 142
    if-nez p2, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 146
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v1, v1, v0

    .line 147
    .local v1, "oldCount":I
    int-to-long v2, v1

    int-to-long v4, p2

    add-long/2addr v2, v4

    .line 148
    .local v2, "newCount":J
    const-wide/32 v4, 0x7fffffff

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "too many occurrences: %s"

    invoke-static {v4, v5, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 149
    iget-object v4, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    long-to-int v5, v2

    aput v5, v4, v0

    .line 150
    if-nez v1, :cond_2

    .line 151
    iget v4, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 153
    :cond_2
    iget-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 154
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->add(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 205
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 206
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 207
    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 208
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 129
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 133
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    return v1

    .line 130
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method distinctElements()I
    .locals 1

    .line 118
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$1;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$2;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 162
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    .line 166
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const-string v2, "occurrences"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 167
    if-nez p2, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 170
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 171
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v4, v3, v2

    .line 172
    .local v4, "oldCount":I
    if-nez v4, :cond_2

    .line 173
    return v0

    .line 174
    :cond_2
    if-gt v4, p2, :cond_3

    .line 175
    aput v0, v3, v2

    .line 176
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 177
    iget-wide v5, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    goto :goto_0

    .line 179
    :cond_3
    sub-int v0, v4, p2

    aput v0, v3, v2

    .line 180
    iget-wide v5, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v7, p2

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 182
    :goto_0
    return v4

    .line 163
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "index":I
    .end local v4    # "oldCount":I
    :cond_4
    :goto_1
    return v0
.end method

.method public setCount(Ljava/lang/Enum;I)I
    .locals 7
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    .line 190
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 192
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v2, v1, v0

    .line 193
    .local v2, "oldCount":I
    aput p2, v1, v0

    .line 194
    iget-wide v3, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    sub-int v1, p2, v2

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 195
    if-nez v2, :cond_0

    if-lez p2, :cond_0

    .line 196
    iget v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    goto :goto_0

    .line 197
    :cond_0
    if-lez v2, :cond_1

    if-nez p2, :cond_1

    .line 198
    iget v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 200
    :cond_1
    :goto_0
    return v2
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->setCount(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param

    .line 45
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    .line 123
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
