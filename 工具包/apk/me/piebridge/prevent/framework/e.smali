.class public final Lme/piebridge/prevent/framework/e;
.super Ljava/lang/Object;
.source "IntentFilterMatchResult.java"


# static fields
.field public static final a:Lme/piebridge/prevent/framework/e;

.field public static final b:Lme/piebridge/prevent/framework/e;


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    new-instance v0, Lme/piebridge/prevent/framework/e;

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/piebridge/prevent/framework/e;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lme/piebridge/prevent/framework/e;->a:Lme/piebridge/prevent/framework/e;

    .line 14
    new-instance v0, Lme/piebridge/prevent/framework/e;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lme/piebridge/prevent/framework/e;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lme/piebridge/prevent/framework/e;->b:Lme/piebridge/prevent/framework/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Integer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lme/piebridge/prevent/framework/e;->c:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lme/piebridge/prevent/framework/e;->d:Ljava/lang/Integer;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 22
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lme/piebridge/prevent/framework/e;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lme/piebridge/prevent/framework/e;->d:Ljava/lang/Integer;

    return-object v0
.end method
