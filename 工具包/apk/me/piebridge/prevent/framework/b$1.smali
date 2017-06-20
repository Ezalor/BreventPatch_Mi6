.class Lme/piebridge/prevent/framework/b$1;
.super Ljava/lang/Object;
.source "ActivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/framework/b;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/framework/b;)V
    .registers 2

    .prologue
    .line 349
    iput-object p1, p0, Lme/piebridge/prevent/framework/b$1;->a:Lme/piebridge/prevent/framework/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lme/piebridge/prevent/framework/b$1;->a:Lme/piebridge/prevent/framework/b;

    invoke-static {v0}, Lme/piebridge/prevent/framework/b;->a(Lme/piebridge/prevent/framework/b;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 353
    iget-object v0, p0, Lme/piebridge/prevent/framework/b$1;->a:Lme/piebridge/prevent/framework/b;

    invoke-static {v0}, Lme/piebridge/prevent/framework/b;->b(Lme/piebridge/prevent/framework/b;)V

    .line 355
    :cond_d
    return-void
.end method
