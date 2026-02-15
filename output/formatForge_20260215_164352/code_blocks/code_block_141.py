# خلاصه interface فایل‌های وابسته
# مثال:
class BaseConverter(ABC):
    @abstractmethod
    def detect(self, path: str) -> bool: ...
    @abstractmethod
    def convert(self, path: str, config: AppConfig) -> ConversionResult: ...

class DocumentMetadata(BaseModel):
    title: str
    slug: str
    lang: Literal["fa", "en", "fa-en"]
    dir: Literal["rtl", "ltr"] = "rtl"
    # ... (خلاصه فیلدها)