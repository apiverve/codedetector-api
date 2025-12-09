declare module '@apiverve/codedetector' {
  export interface codedetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface codedetectorResponse {
    status: string;
    error: string | null;
    data: CodeDetectorData;
    code?: number;
  }


  interface CodeDetectorData {
      likelihood: number;
      family:     string;
      current:    string;
      readable:   string;
      extension:  string;
  }

  export default class codedetectorWrapper {
    constructor(options: codedetectorOptions);

    execute(callback: (error: any, data: codedetectorResponse | null) => void): Promise<codedetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: codedetectorResponse | null) => void): Promise<codedetectorResponse>;
    execute(query?: Record<string, any>): Promise<codedetectorResponse>;
  }
}
