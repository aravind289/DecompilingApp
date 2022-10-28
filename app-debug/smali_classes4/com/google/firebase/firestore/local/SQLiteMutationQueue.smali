.class final Lcom/google/firebase/firestore/local/SQLiteMutationQueue;
.super Ljava/lang/Object;
.source "SQLiteMutationQueue.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/MutationQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;
    }
.end annotation


# static fields
.field private static final BLOB_MAX_INLINE_LENGTH:I = 0xf4240


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private lastStreamToken:Lcom/google/protobuf/ByteString;

.field private nextBatchId:I

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

.field private final uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 1
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "user"    # Lcom/google/firebase/firestore/auth/User;
    .param p4, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 98
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 99
    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->getUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 101
    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 102
    return-void
.end method

.method private decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 9
    .param p1, "batchId"    # I
    .param p2, "bytes"    # [B

    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    array-length v2, p2

    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    .line 452
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 453
    invoke-static {p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->parseFrom([B)Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMutationBatch(Lcom/google/firebase/firestore/proto/WriteBatch;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;

    invoke-direct {v2, p2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;-><init>([B)V

    .line 457
    .local v2, "accumulator":Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;
    :goto_0
    invoke-static {v2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->access$000(Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->numChunks()I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v4, v1

    .line 463
    .local v4, "start":I
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v6, "SELECT SUBSTR(mutations, ?, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v5

    .line 465
    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->first(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 466
    nop

    .end local v4    # "start":I
    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->result()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 469
    .local v3, "blob":Lcom/google/protobuf/ByteString;
    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 470
    invoke-static {v3}, Lcom/google/firebase/firestore/proto/WriteBatch;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v5

    .line 469
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMutationBatch(Lcom/google/firebase/firestore/proto/WriteBatch;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 471
    .end local v2    # "accumulator":Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;
    .end local v3    # "blob":Lcom/google/protobuf/ByteString;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "MutationBatch failed to parse: %s"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method static synthetic lambda$getAllMutationBatchesAffectingDocumentKeys$9(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/mutation/MutationBatch;)I
    .locals 2
    .param p0, "lhs"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 327
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getHighestUnacknowledgedBatchId$5(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 1
    .param p0, "row"    # Landroid/database/Cursor;

    .line 249
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadNextBatchIdAcrossAllUsers$1(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .param p0, "uids"    # Ljava/util/List;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 143
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$performConsistencyCheck$11(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .param p0, "danglingMutationReferences"    # Ljava/util/List;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 429
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 430
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method private loadNextBatchIdAcrossAllUsers()V
    .locals 7

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT uid FROM mutation_queues"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v6, "SELECT MAX(batch_id) FROM mutations WHERE uid = ?"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 148
    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;)V

    .line 149
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 150
    .end local v3    # "uid":Ljava/lang/String;
    goto :goto_0

    .line 152
    :cond_0
    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    .line 153
    return-void
.end method

.method private writeMutationQueueMetadata()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 183
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 184
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 178
    const-string v2, "INSERT OR REPLACE INTO mutation_queues (uid, last_acknowledged_batch_id, last_stream_token) VALUES (?, ?, ?)"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method


# virtual methods
.method public acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .param p2, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 162
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 163
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->writeMutationQueueMetadata()V

    .line 164
    return-void
.end method

.method public addMutationBatch(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 19
    .param p1, "localWriteTime"    # Lcom/google/firebase/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;"
        }
    .end annotation

    .line 190
    .local p2, "baseMutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .local p3, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    .line 191
    .local v1, "batchId":I
    iget v2, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    .line 193
    new-instance v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    .line 194
    .local v2, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v7, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v7, v2}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v7

    .line 196
    .local v7, "proto":Lcom/google/protobuf/MessageLite;
    iget-object v8, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    .line 200
    invoke-interface {v7}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v10, v13

    .line 196
    const-string v11, "INSERT INTO mutations (uid, batch_id, mutations) VALUES (?, ?, ?)"

    invoke-virtual {v8, v11, v10}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v8, "inserted":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v10, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 208
    const-string v11, "INSERT INTO document_mutations (uid, path, batch_id) VALUES (?, ?, ?)"

    invoke-virtual {v10, v11}, Lcom/google/firebase/firestore/local/SQLitePersistence;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 209
    .local v10, "indexInserter":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 210
    .local v14, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v14}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v15

    .line 211
    .local v15, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 212
    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v15}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v16

    .line 216
    .local v16, "path":Ljava/lang/String;
    iget-object v13, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    aput-object v9, v3, v12

    const/4 v9, 0x1

    aput-object v16, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x2

    aput-object v18, v3, v17

    invoke-virtual {v13, v10, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 218
    iget-object v3, v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {v15}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v13

    invoke-interface {v3, v13}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    .line 219
    .end local v14    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    .end local v15    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v16    # "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v9, 0x3

    const/4 v13, 0x2

    goto :goto_0

    .line 221
    :cond_1
    return-object v2
.end method

.method public getAllMutationBatches()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? ORDER BY batch_id ASC"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 259
    const v3, 0xf4240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;)V

    .line 260
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 261
    return-object v0
.end method

.method public getAllMutationBatchesAffectingDocumentKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/List;
    .locals 6
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT m.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path = ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 277
    const v4, 0xf4240

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;)V

    .line 278
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 280
    return-object v1
.end method

.method public getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 286
    .local p1, "documentKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 288
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 291
    :cond_0
    new-instance v7, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xf4240

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v3, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v3, "SELECT DISTINCT dm.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path IN ("

    const-string v6, ") AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 305
    .local v1, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 307
    .local v3, "uniqueBatchIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    nop

    .line 309
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v3, v2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda11;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/Set;Ljava/util/List;)V

    .line 310
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_1

    .line 323
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->getSubqueriesPerformed()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 324
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    :cond_2
    return-object v2
.end method

.method public getAllMutationBatchesAffectingQuery(Lcom/google/firebase/firestore/core/Query;)Ljava/util/List;
    .locals 10
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 334
    nop

    .line 335
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 334
    const-string v4, "CollectionGroup queries should be handled in LocalDocumentsView"

    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 339
    .local v0, "prefix":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 355
    .local v3, "immediateChildrenPathLength":I
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "prefixPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "prefixSuccessorPath":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    iget-object v7, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v8, "SELECT dm.batch_id, dm.path, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path >= ? AND dm.path < ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0xf4240

    .line 369
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v4, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v6, v3}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;I)V

    .line 370
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 394
    return-object v6
.end method

.method public getHighestUnacknowledgedBatchId()I
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT IFNULL(MAX(batch_id), ?) FROM mutations WHERE uid = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 248
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda4;-><init>()V

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNextMutationBatchAfterBatchId(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 5
    .param p1, "batchId"    # I

    .line 235
    add-int/lit8 v0, p1, 0x1

    .line 237
    .local v0, "nextBatchId":I
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id >= ? ORDER BY batch_id ASC LIMIT 1"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 241
    const v3, 0xf4240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;)V

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 237
    return-object v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT batch_id FROM mutations WHERE uid = ? LIMIT 1"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getAllMutationBatches$6$com-google-firebase-firestore-local-SQLiteMutationQueue(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Ljava/util/List;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 260
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$getAllMutationBatchesAffectingDocumentKey$7$com-google-firebase-firestore-local-SQLiteMutationQueue(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Ljava/util/List;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 278
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$getAllMutationBatchesAffectingDocumentKeys$8$com-google-firebase-firestore-local-SQLiteMutationQueue(Ljava/util/Set;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "uniqueBatchIds"    # Ljava/util/Set;
    .param p2, "result"    # Ljava/util/List;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 312
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 313
    .local v0, "batchId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    return-void
.end method

.method synthetic lambda$getAllMutationBatchesAffectingQuery$10$com-google-firebase-firestore-local-SQLiteMutationQueue(Ljava/util/List;ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "result"    # Ljava/util/List;
    .param p2, "immediateChildrenPathLength"    # I
    .param p3, "row"    # Landroid/database/Cursor;

    .line 375
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 376
    .local v0, "batchId":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 377
    .local v1, "size":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 378
    return-void

    .line 386
    :cond_0
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 387
    .local v2, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 388
    return-void

    .line 391
    :cond_1
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method synthetic lambda$getNextMutationBatchAfterBatchId$4$com-google-firebase-firestore-local-SQLiteMutationQueue(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 2
    .param p1, "row"    # Landroid/database/Cursor;

    .line 242
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadNextBatchIdAcrossAllUsers$2$com-google-firebase-firestore-local-SQLiteMutationQueue(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "row"    # Landroid/database/Cursor;

    .line 149
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->nextBatchId:I

    return-void
.end method

.method synthetic lambda$lookupMutationBatch$3$com-google-firebase-firestore-local-SQLiteMutationQueue(ILandroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 1
    .param p1, "batchId"    # I
    .param p2, "row"    # Landroid/database/Cursor;

    .line 229
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->decodeInlineMutationBatch(I[B)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$start$0$com-google-firebase-firestore-local-SQLiteMutationQueue(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "row"    # Landroid/database/Cursor;

    .line 113
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 4
    .param p1, "batchId"    # I

    .line 227
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 228
    const v2, 0xf4240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;I)V

    .line 229
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 227
    return-object v0
.end method

.method public performConsistencyCheck()V
    .locals 6

    .line 419
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 424
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, "danglingMutationReferences":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT path FROM document_mutations WHERE uid = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 426
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;)V

    .line 427
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 433
    nop

    .line 434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 433
    const-string v3, "Document leak -- detected dangling mutation references when queue is empty. Dangling keys: %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V
    .locals 14
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 399
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 400
    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 402
    .local v0, "mutationDeleter":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 403
    const-string v2, "DELETE FROM document_mutations WHERE uid = ? AND path = ? AND batch_id = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 405
    .local v1, "indexDeleter":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    .line 406
    .local v2, "batchId":I
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v3, v0, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    move-result v3

    .line 407
    .local v3, "deleted":I
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v6, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "Mutation batch (%s, %d) did not exist"

    invoke-static {v5, v9, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 410
    .local v6, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v9

    .line 411
    .local v9, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v10

    invoke-static {v10}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "path":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    aput-object v13, v12, v7

    aput-object v10, v12, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v11, v1, v12}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 413
    iget-object v11, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v11}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->removeMutationReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 414
    .end local v6    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    .end local v9    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v10    # "path":Ljava/lang/String;
    goto :goto_1

    .line 415
    :cond_1
    return-void
.end method

.method public setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 173
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 174
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->writeMutationQueueMetadata()V

    .line 175
    return-void
.end method

.method public start()V
    .locals 4

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->loadNextBatchIdAcrossAllUsers()V

    .line 110
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 111
    const-string v1, "SELECT last_stream_token FROM mutation_queues WHERE uid = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->first(Lcom/google/firebase/firestore/util/Consumer;)I

    move-result v0

    .line 115
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->writeMutationQueueMetadata()V

    .line 120
    :cond_0
    return-void
.end method
