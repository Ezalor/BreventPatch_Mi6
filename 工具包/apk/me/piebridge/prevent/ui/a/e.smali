.class public Lme/piebridge/prevent/ui/a/e;
.super Ljava/lang/Object;
.source "LabelLoader.java"


# static fields
.field private static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lme/piebridge/prevent/ui/a/e;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/a/e;->b:Landroid/content/SharedPreferences;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/a/e;->c:Landroid/content/pm/PackageManager;

    .line 25
    return-void
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/a/e;)Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/a/e;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .prologue
    .line 40
    sget-object v0, Lme/piebridge/prevent/ui/a/e;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lme/piebridge/prevent/ui/a/e$1;

    invoke-direct {v1, p0, p1}, Lme/piebridge/prevent/ui/a/e$1;-><init>(Lme/piebridge/prevent/ui/a/e;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 28
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/a/e;->b(Landroid/content/pm/ApplicationInfo;)V

    .line 31
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_13
    return-object v0

    .line 33
    :cond_14
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/e;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/j;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v2, p0, Lme/piebridge/prevent/ui/a/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_13
.end method
