.class Lio/grpc/util/AdvancedTlsX509KeyManager$1;
.super Ljava/lang/Object;
.source "AdvancedTlsX509KeyManager.java"

# interfaces
.implements Lio/grpc/util/AdvancedTlsX509KeyManager$Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/AdvancedTlsX509KeyManager;->updateIdentityCredentialsFromFile(Ljava/io/File;Ljava/io/File;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/util/AdvancedTlsX509KeyManager$Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/util/AdvancedTlsX509KeyManager;

.field final synthetic val$future:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lio/grpc/util/AdvancedTlsX509KeyManager;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/AdvancedTlsX509KeyManager;

    .line 137
    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$1;->this$0:Lio/grpc/util/AdvancedTlsX509KeyManager;

    iput-object p2, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$1;->val$future:Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 139
    iget-object v0, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$1;->val$future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 140
    return-void
.end method
